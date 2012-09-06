.class Ls/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ls/q;


# direct methods
.method constructor <init>(Ls/q;)V
    .registers 2
    .parameter

    .prologue
    .line 1830
    iput-object p1, p0, Ls/t;->a:Ls/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1833
    iget-object v0, p0, Ls/t;->a:Ls/q;

    iget-object v1, p0, Ls/t;->a:Ls/q;

    iget-object v1, v1, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-static {v0, v1}, Ls/q;->a(Ls/q;Lcom/google/android/maps/driveabout/app/cI;)V

    .line 1834
    return-void
.end method
