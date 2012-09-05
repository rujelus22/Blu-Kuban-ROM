.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->CreateThumbnailThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 2162
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v4

    .line 2163
    .local v4, thumbnail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 2164
    .local v2, pos:I
    const-string v5, "DLNA_Addin"

    const-string v6, "Started "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_13
    :goto_13
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v5

    if-ne v2, v5, :cond_20

    .line 2169
    const-wide/16 v5, 0x1f4

    :try_start_1d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_3b

    .line 2175
    :cond_20
    :goto_20
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_40

    .line 2176
    const-string v5, "DLNA_Addin"

    const-string v6, "uris == null "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_2d
    const-string v5, "DLNA_Addin"

    const-string v6, "Terminated "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;
    invoke-static {v5, v6}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3502(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2227
    return-void

    .line 2170
    :catch_3b
    move-exception v0

    .line 2171
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_20

    .line 2180
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_40
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mThumbnailCreateThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Ljava/lang/Thread;

    move-result-object v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v5

    if-ge v2, v5, :cond_2d

    .line 2183
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v5

    if-ge v2, v5, :cond_13

    .line 2185
    const/4 v1, 0x0

    .line 2187
    .local v1, filePath:Ljava/lang/String;
    :try_start_59
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 2188
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_d6

    .line 2189
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v2

    .line 2194
    :cond_71
    :goto_71
    const/4 v3, 0x0

    .line 2195
    .local v3, thumb:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_a6

    .line 2196
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #thumb:Landroid/graphics/Bitmap;
    check-cast v3, Landroid/graphics/Bitmap;

    .line 2197
    .restart local v3       #thumb:Landroid/graphics/Bitmap;
    const-string v5, "DLNA_Addin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "make thumbnail Pos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " thumb : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_a6
    if-nez v3, :cond_be

    .line 2201
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_be

    .line 2202
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_e0

    .line 2203
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->get_Thumbnail(I)Landroid/graphics/Bitmap;
    invoke-static {v5, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2209
    :cond_be
    :goto_be
    if-eqz v3, :cond_d2

    .line 2210
    if-eqz v4, :cond_c5

    .line 2211
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    :cond_c5
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2215
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->inNotifyDataSetChanged()V
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 2221
    .end local v3           #thumb:Landroid/graphics/Bitmap;
    :cond_d2
    :goto_d2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 2191
    :cond_d6
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    goto :goto_71

    .line 2205
    .restart local v3       #thumb:Landroid/graphics/Bitmap;
    :cond_e0
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$27;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/4 v6, 0x0

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->get_Thumbnail(I)Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)Landroid/graphics/Bitmap;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_e6} :catch_e8

    move-result-object v3

    goto :goto_be

    .line 2217
    .end local v3           #thumb:Landroid/graphics/Bitmap;
    :catch_e8
    move-exception v0

    .line 2218
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DLNA_Addin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2
.end method
