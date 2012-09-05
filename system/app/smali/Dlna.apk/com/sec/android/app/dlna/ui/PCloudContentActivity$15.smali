.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$15;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    const/16 v2, 0x470

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->showDialog(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 435
    :goto_7
    return-void

    .line 432
    :catch_8
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
