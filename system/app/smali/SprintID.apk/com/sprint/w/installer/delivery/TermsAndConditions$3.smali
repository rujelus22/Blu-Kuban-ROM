.class Lcom/sprint/w/installer/delivery/TermsAndConditions$3;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$3;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$3;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->setResult(I)V

    .line 180
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$3;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->finish()V

    .line 181
    return-void
.end method
