.class Lcom/sprint/w/installer/delivery/TermsAndConditions$2;
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
    .line 168
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$2;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$2;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->setResult(I)V

    .line 172
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$2;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->finish()V

    .line 173
    return-void
.end method
