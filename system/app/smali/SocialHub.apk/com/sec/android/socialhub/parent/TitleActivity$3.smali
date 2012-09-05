.class Lcom/sec/android/socialhub/parent/TitleActivity$3;
.super Ljava/lang/Object;
.source "TitleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/parent/TitleActivity;->showDiscardPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/TitleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/TitleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$3;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$3;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsShowingPopup:Z

    .line 598
    return-void
.end method
