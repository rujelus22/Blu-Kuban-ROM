.class public final Lcom/anddoes/launcher/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field public c:Lcom/anddoes/launcher/PreviewPane;

.field public d:Landroid/view/View;

.field public e:I

.field private f:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, -0x1

    sput v0, Lcom/anddoes/launcher/jq;->a:I

    .line 8
    const/4 v0, -0x2

    sput v0, Lcom/anddoes/launcher/jq;->b:I

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/anddoes/launcher/jq;->c:Lcom/anddoes/launcher/PreviewPane;

    .line 12
    iput-object p2, p0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    .line 13
    iput p3, p0, Lcom/anddoes/launcher/jq;->e:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anddoes/launcher/jq;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 24
    iget-object v0, p0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/jq;->f:Landroid/widget/ImageView;

    .line 26
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/jq;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anddoes/launcher/jq;->c:Lcom/anddoes/launcher/PreviewPane;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/PreviewPane;->a(Lcom/anddoes/launcher/jq;)V

    .line 38
    return-void
.end method
