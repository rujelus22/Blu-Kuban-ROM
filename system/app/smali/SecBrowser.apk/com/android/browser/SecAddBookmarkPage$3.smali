.class Lcom/android/browser/SecAddBookmarkPage$3;
.super Ljava/lang/Object;
.source "SecAddBookmarkPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecAddBookmarkPage;->promptToOverwrite()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecAddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/SecAddBookmarkPage;)V
    .registers 2
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/browser/SecAddBookmarkPage$3;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1035
    return-void
.end method
