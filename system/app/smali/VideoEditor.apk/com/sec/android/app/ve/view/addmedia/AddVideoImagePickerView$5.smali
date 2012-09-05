.class Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$5;
.super Ljava/lang/Object;
.source "AddVideoImagePickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->notifyVideoThumbupdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$5;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$5;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->notifyDataSetChanged()V

    .line 702
    return-void
.end method
