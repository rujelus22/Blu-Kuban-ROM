.class Lcom/sprint/w/installer/RssTermsAndConditions$3;
.super Ljava/lang/Object;
.source "RssTermsAndConditions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssTermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssTermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$3;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$3;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->setResult(I)V

    .line 116
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$3;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->finish()V

    .line 117
    return-void
.end method
