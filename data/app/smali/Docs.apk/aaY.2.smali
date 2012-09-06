.class public final enum LaaY;
.super Ljava/lang/Enum;
.source "LinearLayoutListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LaaY;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LaaY;

.field private static final synthetic a:[LaaY;

.field public static final enum b:LaaY;


# instance fields
.field private final a:I

.field private final a:Labb;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, LaaY;

    const-string v1, "HORIZONTAL"

    new-instance v5, LaaZ;

    invoke-direct {v5}, LaaZ;-><init>()V

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, LaaY;-><init>(Ljava/lang/String;IIILabb;)V

    sput-object v0, LaaY;->a:LaaY;

    .line 94
    new-instance v3, LaaY;

    const-string v4, "VERTICAL"

    new-instance v8, Laba;

    invoke-direct {v8}, Laba;-><init>()V

    move v5, v9

    move v6, v9

    move v7, v9

    invoke-direct/range {v3 .. v8}, LaaY;-><init>(Ljava/lang/String;IIILabb;)V

    sput-object v3, LaaY;->b:LaaY;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [LaaY;

    sget-object v1, LaaY;->a:LaaY;

    aput-object v1, v0, v2

    sget-object v1, LaaY;->b:LaaY;

    aput-object v1, v0, v9

    sput-object v0, LaaY;->a:[LaaY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILabb;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Labb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, LaaY;->a:I

    .line 111
    iput p4, p0, LaaY;->b:I

    .line 112
    iput-object p5, p0, LaaY;->a:Labb;

    .line 113
    return-void
.end method

.method private a()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, LaaY;->a:I

    return v0
.end method

.method private a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 124
    iget v0, p0, LaaY;->b:I

    if-nez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    move p1, p2

    goto :goto_4
.end method

.method public static synthetic a(LaaY;)I
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, LaaY;->a()I

    move-result v0

    return v0
.end method

.method public static synthetic a(LaaY;II)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, LaaY;->a(II)I

    move-result v0

    return v0
.end method

.method public static synthetic a(LaaY;Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, LaaY;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, LaaY;->a:Labb;

    invoke-interface {v0, p1, p2}, Labb;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LaaY;
    .registers 2
    .parameter

    .prologue
    .line 87
    const-class v0, LaaY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaaY;

    return-object v0
.end method

.method public static values()[LaaY;
    .registers 1

    .prologue
    .line 87
    sget-object v0, LaaY;->a:[LaaY;

    invoke-virtual {v0}, [LaaY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaaY;

    return-object v0
.end method
