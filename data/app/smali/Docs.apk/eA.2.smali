.class LeA;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ley;


# direct methods
.method constructor <init>(Ley;)V
    .registers 2
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, LeA;->a:Ley;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, LeA;->a:Ley;

    invoke-static {v0}, Ley;->a(Ley;)V

    .line 487
    return-void
.end method
