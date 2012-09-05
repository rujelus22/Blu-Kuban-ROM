.class Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;
.super Ljava/lang/Object;
.source "AxT9UmlautPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->finish()V

    .line 39
    return-void
.end method
