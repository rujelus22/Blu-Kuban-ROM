.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1166
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1168
    const/4 v1, 0x0

    .line 1170
    .local v1, mMimeType:I
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2d

    .line 1171
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v4

    aget-object v3, v3, v4

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)I

    move-result v1

    .line 1176
    :goto_24
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5a

    .line 1178
    :try_start_27
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleNext()V
    :try_end_2c
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_27 .. :try_end_2c} :catch_3d

    .line 1187
    :goto_2c
    return-void

    .line 1173
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)I

    move-result v1

    goto :goto_24

    .line 1179
    :catch_3d
    move-exception v0

    .line 1181
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 1182
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMCAPIException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1185
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_5a
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$19;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v3, 0x709

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto :goto_2c
.end method
