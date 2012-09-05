.class Lcom/samsung/dmp/layout/DMPImageActivity$21;
.super Landroid/telephony/PhoneStateListener;
.source "DMPImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$21;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 1207
    if-eq p1, v1, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 1209
    :cond_6
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$21;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2700(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    .line 1210
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$21;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mCallEventOccured:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2502(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 1215
    :cond_10
    :goto_10
    return-void

    .line 1212
    :cond_11
    if-nez p1, :cond_10

    goto :goto_10
.end method
