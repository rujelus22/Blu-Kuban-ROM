.class Lcom/infraware/filemanager/file/FileBaseActivity$15$1;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity$15;->call()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/filemanager/file/FileBaseActivity$15;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity$15;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->this$1:Lcom/infraware/filemanager/file/FileBaseActivity$15;

    iput p2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->val$x:I

    iput p3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->val$y:I

    .line 1737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    .line 1740
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->this$1:Lcom/infraware/filemanager/file/FileBaseActivity$15;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v2}, Lcom/infraware/filemanager/file/FileBaseActivity$15;->access$1(Lcom/infraware/filemanager/file/FileBaseActivity$15;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v8

    iget v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->val$x:I

    int-to-float v5, v2

    iget v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->val$y:I

    int-to-float v6, v2

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1741
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->this$1:Lcom/infraware/filemanager/file/FileBaseActivity$15;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v2}, Lcom/infraware/filemanager/file/FileBaseActivity$15;->access$1(Lcom/infraware/filemanager/file/FileBaseActivity$15;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v2

    const/4 v9, 0x1

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->val$x:I

    int-to-float v10, v3

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;->val$y:I

    int-to-float v11, v3

    move-wide v5, v0

    move-wide v7, v0

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1742
    return-void
.end method
