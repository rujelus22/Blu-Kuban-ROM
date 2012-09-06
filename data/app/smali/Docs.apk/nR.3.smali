.class public LnR;
.super LsL;
.source "TimeRangeSectionIndexer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LsL",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LnS;

    invoke-direct {v0}, LnS;-><init>()V

    sput-object v0, LnR;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[LnT;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LsL;-><init>(Landroid/database/Cursor;I[LsK;Z)V

    .line 66
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, LnR;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, LnR;->a:Ljava/util/Comparator;

    return-object v0
.end method
