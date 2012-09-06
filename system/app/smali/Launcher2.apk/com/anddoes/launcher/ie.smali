.class final Lcom/anddoes/launcher/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/id;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/id;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ie;->a:Lcom/anddoes/launcher/id;

    iput p2, p0, Lcom/anddoes/launcher/ie;->b:I

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/anddoes/launcher/ie;->a:Lcom/anddoes/launcher/id;

    invoke-static {v0}, Lcom/anddoes/launcher/id;->a(Lcom/anddoes/launcher/id;)Lcom/anddoes/launcher/MultiPickerActivity;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ie;->b:I

    invoke-static {v0, p1, v1}, Lcom/anddoes/launcher/MultiPickerActivity;->a(Lcom/anddoes/launcher/MultiPickerActivity;Landroid/view/View;I)V

    .line 260
    return-void
.end method
