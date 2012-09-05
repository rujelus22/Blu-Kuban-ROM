.class Lcom/sprint/w/installer/TermsAndConditions$2;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/TermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sprint/w/installer/TermsAndConditions$2;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$2;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/TermsAndConditions;->setResult(I)V

    .line 213
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$2;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/TermsAndConditions;->finish()V

    .line 214
    return-void
.end method
