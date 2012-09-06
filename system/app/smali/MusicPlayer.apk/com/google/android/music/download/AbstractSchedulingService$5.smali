.class Lcom/google/android/music/download/AbstractSchedulingService$5;
.super Lcom/google/android/music/download/cache/IDeleteFilter$Stub;
.source "AbstractSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/AbstractSchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/AbstractSchedulingService;


# direct methods
.method constructor <init>(Lcom/google/android/music/download/AbstractSchedulingService;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService$5;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-direct {p0}, Lcom/google/android/music/download/cache/IDeleteFilter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldFilter(Ljava/lang/String;)Z
    .registers 3
    .parameter "fullFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
