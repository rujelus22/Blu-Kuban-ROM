.class Lcom/samsung/dmp/layout/DMPVideoActivity$30;
.super Landroid/telephony/PhoneStateListener;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 2294
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 2297
    :cond_6
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6300(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 2298
    const-string v0, "DLNA"

    const-string v1, "*****Incoming call*******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_12
    :goto_12
    return-void

    .line 2299
    :cond_13
    if-nez p1, :cond_12

    .line 2300
    const-string v0, "DLNA"

    const-string v1, "*******Call ends********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
