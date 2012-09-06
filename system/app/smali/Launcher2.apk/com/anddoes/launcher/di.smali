.class final Lcom/anddoes/launcher/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/GroupConfigActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/GroupConfigActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/di;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/anddoes/launcher/di;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->h(Lcom/anddoes/launcher/GroupConfigActivity;)V

    .line 161
    iget-object v0, p0, Lcom/anddoes/launcher/di;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->i(Lcom/anddoes/launcher/GroupConfigActivity;)Lcom/anddoes/launcher/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/dl;->notifyDataSetChanged()V

    .line 162
    return-void
.end method
