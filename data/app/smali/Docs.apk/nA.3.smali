.class public LnA;
.super LsL;
.source "FoldersThenTitleSectionIndexer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LsL",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/text/Collator;I[LnC;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, LsL;-><init>(Landroid/database/Cursor;I[LsK;Z)V

    .line 69
    new-instance v0, LnB;

    invoke-direct {v0, p0, p2}, LnB;-><init>(LnA;Ljava/text/Collator;)V

    iput-object v0, p0, LnA;->a:Ljava/util/Comparator;

    .line 79
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;I)Landroid/util/Pair;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, LMj;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, LkT;->a(Ljava/lang/String;)LkU;

    move-result-object v0

    .line 90
    sget-object v1, LkU;->h:LkU;

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    .line 91
    :goto_d
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 90
    :cond_1b
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected bridge synthetic a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, LnA;->a(Landroid/database/Cursor;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, LnA;->a:Ljava/util/Comparator;

    return-object v0
.end method
