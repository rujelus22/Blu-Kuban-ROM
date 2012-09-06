.class Lcom/google/googlenav/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/AboutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/googlenav/settings/a;->a:Lcom/google/googlenav/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/settings/b;Lcom/google/googlenav/settings/b;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 319
    iget-object v0, p1, Lcom/google/googlenav/settings/b;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/googlenav/settings/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 316
    check-cast p1, Lcom/google/googlenav/settings/b;

    check-cast p2, Lcom/google/googlenav/settings/b;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/settings/a;->a(Lcom/google/googlenav/settings/b;Lcom/google/googlenav/settings/b;)I

    move-result v0

    return v0
.end method
