.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
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
    name = "GetImageHandler"
.end annotation


# instance fields
.field public mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;


# direct methods
.method private constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1092
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1097
    const/4 v2, 0x0

    .line 1099
    .local v2, isProceed:Z
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1100(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1100
    :try_start_8
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1200(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/util/HashSet;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v6, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e2

    .line 1101
    const/4 v1, 0x1

    .line 1102
    .local v1, isHighestPriority:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget-object v4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v4

    if-ge v0, v4, :cond_36

    .line 1103
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)[I

    move-result-object v4

    aget v4, v4, v0

    if-lez v4, :cond_33

    .line 1104
    const/4 v1, 0x0

    .line 1102
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1108
    :cond_36
    if-eqz v1, :cond_d5

    .line 1109
    const-string v4, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetImageHandler::run(): start to proceed request id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v7, v7, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (field="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v7, v7, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v7, v7, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v7, v7, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " format="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v7, v7, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget-object v7, v7, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)[I

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget-object v6, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v6}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v6

    aget v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v4, v6

    .line 1114
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    invoke-static {v4, v6}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1400(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    move-result-object v3

    .line 1115
    .local v3, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1500(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/util/Hashtable;

    move-result-object v4

    iget v6, v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const/4 v2, 0x1

    .line 1123
    .end local v0           #i:I
    .end local v1           #isHighestPriority:Z
    .end local v3           #response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    :goto_cc
    monitor-exit v5
    :try_end_cd
    .catchall {:try_start_8 .. :try_end_cd} :catchall_df

    .line 1124
    if-eqz v2, :cond_d4

    .line 1125
    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1127
    :cond_d4
    return-void

    .line 1118
    .restart local v0       #i:I
    .restart local v1       #isHighestPriority:Z
    :cond_d5
    :try_start_d5
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_cc

    .line 1123
    .end local v0           #i:I
    .end local v1           #isHighestPriority:Z
    :catchall_df
    move-exception v4

    monitor-exit v5
    :try_end_e1
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_df

    throw v4

    .line 1121
    :cond_e2
    :try_start_e2
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I
    invoke-static {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$1300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)[I

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget-object v6, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v6}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v6

    aget v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v4, v6
    :try_end_f6
    .catchall {:try_start_e2 .. :try_end_f6} :catchall_df

    goto :goto_cc
.end method
