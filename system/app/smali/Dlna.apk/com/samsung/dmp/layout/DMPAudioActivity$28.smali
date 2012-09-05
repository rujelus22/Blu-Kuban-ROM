.class Lcom/samsung/dmp/layout/DMPAudioActivity$28;
.super Landroid/telephony/PhoneStateListener;
.source "DMPAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$28;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1773
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1775
    :cond_6
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$28;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3900(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    .line 1781
    :cond_b
    :goto_b
    return-void

    .line 1778
    :cond_c
    if-nez p1, :cond_b

    goto :goto_b
.end method
