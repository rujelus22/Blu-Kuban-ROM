.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FTSListOfResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/FileTransferServer/Data/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private filelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferServer/Data/FileInfo;>;"
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    .line 315
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 316
    iput-object p4, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->filelist:Ljava/util/ArrayList;

    .line 317
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 322
    move-object v5, p2

    .line 323
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_15

    .line 325
    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 326
    .local v6, vi:Landroid/view/LayoutInflater;
    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 328
    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    .line 329
    .local v1, singleFile:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    if-eqz v1, :cond_6c

    .line 331
    const v7, 0x7f07000c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 332
    .local v4, title:Landroid/widget/TextView;
    const v7, 0x7f07000d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    .local v0, path:Landroid/widget/TextView;
    const v7, 0x7f07000e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 334
    .local v3, time:Landroid/widget/TextView;
    iget-boolean v7, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->isFile:Z

    if-eqz v7, :cond_6d

    .line 336
    if-eqz v4, :cond_45

    .line 338
    iget-object v7, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_45
    if-eqz v0, :cond_5f

    .line 342
    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    const v8, 0x7f060022

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->mSavePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->access$100(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_5f
    if-eqz v3, :cond_6c

    .line 346
    iget-object v2, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->time:Landroid/text/format/Time;

    .line 347
    .local v2, t:Landroid/text/format/Time;
    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->timeToString(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v0           #path:Landroid/widget/TextView;
    .end local v2           #t:Landroid/text/format/Time;
    .end local v3           #time:Landroid/widget/TextView;
    .end local v4           #title:Landroid/widget/TextView;
    :cond_6c
    :goto_6c
    return-object v5

    .line 352
    .restart local v0       #path:Landroid/widget/TextView;
    .restart local v3       #time:Landroid/widget/TextView;
    .restart local v4       #title:Landroid/widget/TextView;
    :cond_6d
    if-eqz v4, :cond_74

    .line 354
    iget-object v7, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_74
    if-eqz v0, :cond_7b

    .line 358
    iget-object v7, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_7b
    if-eqz v3, :cond_6c

    .line 362
    iget-object v2, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->time:Landroid/text/format/Time;

    .line 363
    .restart local v2       #t:Landroid/text/format/Time;
    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$FileAdapter;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->timeToString(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c
.end method
