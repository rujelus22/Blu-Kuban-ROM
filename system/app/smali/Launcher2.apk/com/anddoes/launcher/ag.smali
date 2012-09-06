.class final Lcom/anddoes/launcher/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizeTabHost;

.field private final synthetic b:Lcom/anddoes/launcher/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizeTabHost;Lcom/anddoes/launcher/AppsCustomizePagedView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ag;->a:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/anddoes/launcher/ag;->b:Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/anddoes/launcher/ag;->b:Lcom/anddoes/launcher/AppsCustomizePagedView;

    return-object v0
.end method
