.class public abstract LIh;
.super Ljava/lang/Object;
.source "AbstractActionBarHelper.java"

# interfaces
.implements LIi;


# instance fields
.field private final a:I

.field protected final a:Landroid/app/Activity;

.field private a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LIh;->a:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, LIh;->a:Ljava/lang/String;

    .line 22
    iput p3, p0, LIh;->a:I

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LIh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/widget/Button;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p2, p0, LIh;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 39
    if-nez p1, :cond_a

    .line 40
    iget-object v0, p0, LIh;->a:Landroid/app/Activity;

    iget v1, p0, LIh;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_a
    if-nez p2, :cond_e

    .line 43
    const-string p2, ""

    .line 45
    :cond_e
    invoke-virtual {p0, p1, p2}, LIh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method
