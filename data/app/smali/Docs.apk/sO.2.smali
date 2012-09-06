.class public final enum LsO;
.super Ljava/lang/Enum;
.source "SortKind.java"

# interfaces
.implements LsD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LsO;",
        ">;",
        "LsD;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LsO;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:LsO;

.field private static final synthetic a:[LsO;

.field public static final enum b:LsO;

.field public static final enum c:LsO;

.field public static final enum d:LsO;

.field public static final enum e:LsO;


# instance fields
.field private final a:I

.field private final a:LsD;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, LsO;

    const-string v1, "FOLDERS_THEN_TITLE"

    sget v2, LcY;->menu_sort_title:I

    new-instance v3, LsP;

    invoke-direct {v3}, LsP;-><init>()V

    invoke-direct {v0, v1, v4, v2, v3}, LsO;-><init>(Ljava/lang/String;IILsD;)V

    sput-object v0, LsO;->a:LsO;

    .line 25
    new-instance v0, LsO;

    const-string v1, "LAST_MODIFIED"

    sget v2, LcY;->menu_sort_last_modified:I

    new-instance v3, LsQ;

    invoke-direct {v3}, LsQ;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, LsO;-><init>(Ljava/lang/String;IILsD;)V

    sput-object v0, LsO;->b:LsO;

    .line 32
    new-instance v0, LsO;

    const-string v1, "OPENED_BY_ME_DATE"

    sget v2, LcY;->menu_sort_recently_opened:I

    new-instance v3, LsR;

    invoke-direct {v3}, LsR;-><init>()V

    invoke-direct {v0, v1, v6, v2, v3}, LsO;-><init>(Ljava/lang/String;IILsD;)V

    sput-object v0, LsO;->c:LsO;

    .line 39
    new-instance v0, LsO;

    const-string v1, "EDITED_BY_ME_DATE"

    sget v2, LcY;->menu_sort_recently_edited:I

    new-instance v3, LsS;

    invoke-direct {v3}, LsS;-><init>()V

    invoke-direct {v0, v1, v7, v2, v3}, LsO;-><init>(Ljava/lang/String;IILsD;)V

    sput-object v0, LsO;->d:LsO;

    .line 46
    new-instance v0, LsO;

    const-string v1, "SHARED_WITH_ME_DATE"

    sget v2, LcY;->menu_shared_with_me:I

    new-instance v3, LsT;

    invoke-direct {v3}, LsT;-><init>()V

    invoke-direct {v0, v1, v8, v2, v3}, LsO;-><init>(Ljava/lang/String;IILsD;)V

    sput-object v0, LsO;->e:LsO;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [LsO;

    sget-object v1, LsO;->a:LsO;

    aput-object v1, v0, v4

    sget-object v1, LsO;->b:LsO;

    aput-object v1, v0, v5

    sget-object v1, LsO;->c:LsO;

    aput-object v1, v0, v6

    sget-object v1, LsO;->d:LsO;

    aput-object v1, v0, v7

    sget-object v1, LsO;->e:LsO;

    aput-object v1, v0, v8

    sput-object v0, LsO;->a:[LsO;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LsO;->a:Ljava/util/Map;

    .line 57
    const-class v0, LsO;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsO;

    .line 58
    sget-object v2, LsO;->a:Ljava/util/Map;

    invoke-virtual {v0}, LsO;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    .line 60
    :cond_95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILsD;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LsD;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p4, p0, LsO;->a:LsD;

    .line 67
    iput p3, p0, LsO;->a:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LsO;
    .registers 2
    .parameter

    .prologue
    .line 18
    const-class v0, LsO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsO;

    return-object v0
.end method

.method public static values()[LsO;
    .registers 1

    .prologue
    .line 18
    sget-object v0, LsO;->a:[LsO;

    invoke-virtual {v0}, [LsO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, LsO;->a:I

    return v0
.end method

.method public a(Lcom/google/android/apps/docs/RoboFragmentActivity;J)LsB;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LsO;->a:LsD;

    invoke-interface {v0, p1, p2, p3}, LsD;->a(Lcom/google/android/apps/docs/RoboFragmentActivity;J)LsB;

    move-result-object v0

    return-object v0
.end method
