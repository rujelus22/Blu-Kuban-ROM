.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->PopupMenuOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "di"
    .parameter "position"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubsPopupMenuList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_11

    .line 346
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->AutoSubsMenuHandler(I)V
    invoke-static {v0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)V

    .line 350
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 351
    :cond_11
    return-void
.end method
