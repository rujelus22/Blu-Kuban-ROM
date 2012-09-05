.class Lcom/sprint/w/installer/delivery/KeyWordLookup$1;
.super Ljava/lang/Object;
.source "KeyWordLookup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/KeyWordLookup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/KeyWordLookup;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/KeyWordLookup;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/KeyWordLookup$1;->this$0:Lcom/sprint/w/installer/delivery/KeyWordLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "SearchPSI"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/KeyWordLookup$1;->this$0:Lcom/sprint/w/installer/delivery/KeyWordLookup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 52
    return-void
.end method
