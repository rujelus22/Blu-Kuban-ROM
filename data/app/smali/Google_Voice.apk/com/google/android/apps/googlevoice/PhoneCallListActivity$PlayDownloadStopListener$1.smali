.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$1;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V
    .registers 2
    .parameter

    .prologue
    .line 2149
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$1;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener$1;->this$1:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->onMediaPlayerPrepared()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->access$3200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    .line 2153
    return-void
.end method
