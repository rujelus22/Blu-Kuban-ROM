.class Lez;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ley;


# direct methods
.method constructor <init>(Ley;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lez;->a:Ley;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lez;->a:Ley;

    invoke-static {v0}, Ley;->a(Ley;)V

    .line 493
    return-void
.end method
