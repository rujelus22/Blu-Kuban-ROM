.class public final enum LlR;
.super Ljava/lang/Enum;
.source "MenuItemsState.java"

# interfaces
.implements Lmb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LlR;",
        ">;",
        "Lmb;"
    }
.end annotation


# static fields
.field public static final enum a:LlR;

.field private static final synthetic a:[LlR;

.field public static final enum b:LlR;

.field public static final enum c:LlR;

.field public static final enum d:LlR;

.field public static final enum e:LlR;

.field public static final enum f:LlR;

.field public static final enum g:LlR;

.field public static final enum h:LlR;

.field public static final enum i:LlR;


# instance fields
.field private a:I

.field private a:Lmb;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    new-instance v0, LlR;

    const-string v1, "COMMENT"

    sget v2, LcS;->menu_comments:I

    new-instance v3, LlS;

    invoke-direct {v3}, LlS;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->a:LlR;

    .line 51
    new-instance v0, LlR;

    const-string v1, "DELETE"

    sget v2, LcS;->menu_delete:I

    new-instance v3, LlT;

    invoke-direct {v3}, LlT;-><init>()V

    invoke-direct {v0, v1, v6, v2, v3}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->b:LlR;

    .line 56
    new-instance v0, LlR;

    const-string v1, "SHARING"

    sget v2, LcS;->menu_sharing:I

    new-instance v3, LlU;

    invoke-direct {v3}, LlU;-><init>()V

    invoke-direct {v0, v1, v7, v2, v3}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->c:LlR;

    .line 61
    new-instance v0, LlR;

    const-string v1, "OPEN_WITH"

    sget v2, LcS;->menu_open_with:I

    new-instance v3, LlV;

    invoke-direct {v3}, LlV;-><init>()V

    invoke-direct {v0, v1, v8, v2, v3}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->d:LlR;

    .line 66
    new-instance v0, LlR;

    const-string v1, "SEND"

    sget v2, LcS;->menu_send:I

    new-instance v3, LlW;

    invoke-direct {v3}, LlW;-><init>()V

    invoke-direct {v0, v1, v9, v2, v3}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->e:LlR;

    .line 71
    new-instance v0, LlR;

    const-string v1, "SEND_LINK"

    const/4 v2, 0x5

    sget v3, LcS;->menu_send_link:I

    new-instance v4, LlX;

    invoke-direct {v4}, LlX;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->f:LlR;

    .line 76
    new-instance v0, LlR;

    const-string v1, "MORE"

    const/4 v2, 0x6

    sget v3, LcS;->quick_actions_more:I

    new-instance v4, LlY;

    invoke-direct {v4}, LlY;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->g:LlR;

    .line 81
    new-instance v0, LlR;

    const-string v1, "RENAME"

    const/4 v2, 0x7

    sget v3, LcS;->menu_rename:I

    new-instance v4, LlZ;

    invoke-direct {v4}, LlZ;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->h:LlR;

    .line 86
    new-instance v0, LlR;

    const-string v1, "PIN"

    const/16 v2, 0x8

    sget v3, LcS;->menu_pin:I

    new-instance v4, Lma;

    invoke-direct {v4}, Lma;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, LlR;-><init>(Ljava/lang/String;IILmb;)V

    sput-object v0, LlR;->i:LlR;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [LlR;

    sget-object v1, LlR;->a:LlR;

    aput-object v1, v0, v5

    sget-object v1, LlR;->b:LlR;

    aput-object v1, v0, v6

    sget-object v1, LlR;->c:LlR;

    aput-object v1, v0, v7

    sget-object v1, LlR;->d:LlR;

    aput-object v1, v0, v8

    sget-object v1, LlR;->e:LlR;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, LlR;->f:LlR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LlR;->g:LlR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LlR;->h:LlR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LlR;->i:LlR;

    aput-object v2, v0, v1

    sput-object v0, LlR;->a:[LlR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILmb;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, LlR;->a:I

    .line 98
    iput-object p4, p0, LlR;->a:Lmb;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LlR;
    .registers 2
    .parameter

    .prologue
    .line 45
    const-class v0, LlR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LlR;

    return-object v0
.end method

.method public static values()[LlR;
    .registers 1

    .prologue
    .line 45
    sget-object v0, LlR;->a:[LlR;

    invoke-virtual {v0}, [LlR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LlR;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, LlR;->a:I

    return v0
.end method

.method public a(LlQ;)Z
    .registers 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, LlR;->a:Lmb;

    invoke-interface {v0, p1}, Lmb;->a(LlQ;)Z

    move-result v0

    return v0
.end method
