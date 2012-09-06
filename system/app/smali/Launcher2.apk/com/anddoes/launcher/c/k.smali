.class public final Lcom/anddoes/launcher/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anddoes/launcher/c/i;

    check-cast p2, Lcom/anddoes/launcher/c/i;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anddoes/launcher/c/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/anddoes/launcher/c/i;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
