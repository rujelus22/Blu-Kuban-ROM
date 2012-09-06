.class LBA;
.super Ljava/lang/Object;
.source "XmlHttpRequestRelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LBD;

.field final synthetic a:LBw;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(LBw;ILBD;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, LBA;->a:LBw;

    iput p2, p0, LBA;->a:I

    iput-object p3, p0, LBA;->a:LBD;

    iput p4, p0, LBA;->b:I

    iput-object p5, p0, LBA;->a:Ljava/lang/String;

    iput-object p6, p0, LBA;->b:Ljava/lang/String;

    iput-object p7, p0, LBA;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 639
    iget-object v7, p0, LBA;->a:LBw;

    monitor-enter v7

    .line 640
    :try_start_3
    iget-object v0, p0, LBA;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LBC;

    move-result-object v0

    if-nez v0, :cond_d

    .line 642
    monitor-exit v7

    .line 647
    :goto_c
    return-void

    .line 645
    :cond_d
    iget-object v0, p0, LBA;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LBC;

    move-result-object v0

    iget v1, p0, LBA;->a:I

    iget-object v2, p0, LBA;->a:LBD;

    iget v3, p0, LBA;->b:I

    iget-object v4, p0, LBA;->a:Ljava/lang/String;

    iget-object v5, p0, LBA;->b:Ljava/lang/String;

    iget-object v6, p0, LBA;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, LBC;->onDataReceived(ILBD;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    monitor-exit v7

    goto :goto_c

    :catchall_24
    move-exception v0

    monitor-exit v7
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method
