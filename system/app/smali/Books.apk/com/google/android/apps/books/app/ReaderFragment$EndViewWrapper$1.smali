.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

.field final synthetic val$finalCover:Landroid/graphics/Bitmap;

.field final synthetic val$this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/app/ReaderFragment;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->val$this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->val$finalCover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 1086
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2200(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1087
    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v11

    if-eqz v11, :cond_23

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2300(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/ViewGroup;

    move-result-object v11

    if-nez v11, :cond_25

    .line 1088
    :cond_23
    monitor-exit v12

    .line 1165
    :goto_24
    return-void

    .line 1091
    :cond_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v13, v13, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {v13}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2300(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/ViewGroup;

    move-result-object v13

    const v14, 0x7f0f0071

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11, v13}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2502(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/View;)Landroid/view/View;

    .line 1093
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_4c

    .line 1094
    monitor-exit v12

    goto :goto_24

    .line 1164
    :catchall_49
    move-exception v11

    monitor-exit v12
    :try_end_4b
    .catchall {:try_start_b .. :try_end_4b} :catchall_49

    throw v11

    .line 1097
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f000b

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1098
    .local v4, coverView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->val$finalCover:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f000c

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1101
    .local v9, titleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f000d

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1104
    .local v2, authorView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const v13, 0x7f0e004c

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v11, v13, v14}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f0073

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1108
    .local v1, aboutButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f0074

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1109
    .local v3, buyButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f0075

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1111
    .local v8, shareButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v11

    iget-object v10, v11, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 1113
    .local v10, volumeId:Ljava/lang/String;
    new-instance v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    sget-object v11, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v13, v13, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v13}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v11, v13}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1123
    .local v5, isSample:Z
    if-eqz v5, :cond_1e0

    const/4 v11, 0x0

    :goto_11f
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1124
    if-eqz v5, :cond_12e

    .line 1125
    new-instance v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    :cond_12e
    new-instance v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0f0072

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1144
    .local v7, messageView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v13, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    if-eqz v5, :cond_1e4

    const v11, 0x7f0e004b

    :goto_154
    invoke-virtual {v13, v11}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1146
    .local v6, messageText:Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v14, v14, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v14}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndViewDescription:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2802(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 1159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v13}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v14}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    const/high16 v15, 0x4000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v15}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1164
    monitor-exit v12
    :try_end_1de
    .catchall {:try_start_4c .. :try_end_1de} :catchall_49

    goto/16 :goto_24

    .line 1123
    .end local v6           #messageText:Ljava/lang/String;
    .end local v7           #messageView:Landroid/widget/TextView;
    :cond_1e0
    const/16 v11, 0x8

    goto/16 :goto_11f

    .line 1144
    .restart local v7       #messageView:Landroid/widget/TextView;
    :cond_1e4
    const v11, 0x7f0e004a

    goto/16 :goto_154
.end method
