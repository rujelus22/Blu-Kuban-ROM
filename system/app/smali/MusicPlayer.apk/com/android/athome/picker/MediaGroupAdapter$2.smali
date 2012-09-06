.class Lcom/android/athome/picker/MediaGroupAdapter$2;
.super Ljava/lang/Object;
.source "MediaGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaGroupAdapter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaGroupAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/athome/picker/MediaGroupAdapter$2;->this$0:Lcom/android/athome/picker/MediaGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/MediaGroupAdapter$2;->this$0:Lcom/android/athome/picker/MediaGroupAdapter;

    #getter for: Lcom/android/athome/picker/MediaGroupAdapter;->mListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaGroupAdapter;->access$200(Lcom/android/athome/picker/MediaGroupAdapter;)Lcom/android/athome/picker/MediaGroupAdapter$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaGroupAdapter$2;->this$0:Lcom/android/athome/picker/MediaGroupAdapter;

    #getter for: Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    invoke-static {v1}, Lcom/android/athome/picker/MediaGroupAdapter;->access$100(Lcom/android/athome/picker/MediaGroupAdapter;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/athome/picker/MediaGroupAdapter$Listener;->onStartGroupEditing(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 80
    return-void
.end method
