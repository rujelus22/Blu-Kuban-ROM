.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$2;
.super Ljava/lang/Object;
.source "AllFileBrowserDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setToolbarClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$2;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 178
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail : Home pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$2;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->goToHomeDirectory()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$100(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    .line 180
    return-void
.end method
