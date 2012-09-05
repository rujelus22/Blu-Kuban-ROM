.class Lcom/sprint/w/installer/RssTermsAndConditions$7;
.super Ljava/lang/Object;
.source "RssTermsAndConditions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssTermsAndConditions;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 143
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$7;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "di"
    .parameter "which"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$7;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    #calls: Lcom/sprint/w/installer/RssTermsAndConditions;->loadContent()V
    invoke-static {v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->access$000(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    .line 147
    return-void
.end method
