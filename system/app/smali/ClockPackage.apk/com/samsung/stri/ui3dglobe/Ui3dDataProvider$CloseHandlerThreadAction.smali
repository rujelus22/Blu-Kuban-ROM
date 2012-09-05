.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseHandlerThreadAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;


# direct methods
.method private constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1133
    const/4 v1, 0x0

    .line 1135
    .local v1, isWaitingRequests:Z
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1100(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    :try_start_9
    sget-object v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 1137
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I
    invoke-static {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)[I

    move-result-object v2

    aget v2, v2, v0

    if-lez v2, :cond_30

    .line 1138
    const/4 v1, 0x1

    .line 1143
    :cond_1c
    if-eqz v1, :cond_27

    .line 1144
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    :cond_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_33

    .line 1148
    if-nez v1, :cond_2f

    .line 1149
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CloseHandlerThread()V
    invoke-static {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1700(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    .line 1151
    :cond_2f
    return-void

    .line 1136
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1146
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method
