.class Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$1;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;)V
    .registers 2
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;

    const/4 v1, 0x0

    #calls: Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->launch(I)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->access$500(Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;I)V

    .line 672
    return-void
.end method
