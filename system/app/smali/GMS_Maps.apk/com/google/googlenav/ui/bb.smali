.class Lcom/google/googlenav/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/googlenav/ui/bb;->a:Landroid/content/Context;

    .line 181
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 185
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/bb;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 188
    return-object v0
.end method
