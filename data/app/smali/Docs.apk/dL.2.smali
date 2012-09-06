.class public abstract enum LdL;
.super Ljava/lang/Enum;
.source "ApplicationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LdL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LdL;

.field private static final synthetic a:[LdL;

.field public static final enum b:LdL;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lnk;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 19
    new-instance v0, LdM;

    const-string v1, "DOCS"

    const-class v3, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    sget v4, LcR;->launcher_docs_icon:I

    sget-object v6, Lnk;->b:Lnk;

    sget v7, LcR;->top_bar_search:I

    invoke-direct/range {v0 .. v7}, LdM;-><init>(Ljava/lang/String;ILjava/lang/Class;IILnk;I)V

    sput-object v0, LdL;->a:LdL;

    .line 26
    new-instance v3, LdN;

    const-string v4, "DRIVE"

    const-class v6, Lcom/google/android/apps/docs/app/MainDriveProxyActivity;

    sget v7, LcR;->launcher_drive_icon:I

    sget-object v9, Lnk;->u:Lnk;

    const v10, 0x108004f

    invoke-direct/range {v3 .. v10}, LdN;-><init>(Ljava/lang/String;ILjava/lang/Class;IILnk;I)V

    sput-object v3, LdL;->b:LdL;

    .line 18
    new-array v0, v8, [LdL;

    sget-object v1, LdL;->a:LdL;

    aput-object v1, v0, v2

    sget-object v1, LdL;->b:LdL;

    aput-object v1, v0, v5

    sput-object v0, LdL;->a:[LdL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;IILnk;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II",
            "Lnk;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, LdL;->a:Ljava/lang/Class;

    .line 44
    iput p4, p0, LdL;->a:I

    .line 45
    iput p5, p0, LdL;->b:I

    .line 46
    iput-object p6, p0, LdL;->a:Lnk;

    .line 47
    iput p7, p0, LdL;->c:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Class;IILnk;ILdM;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct/range {p0 .. p7}, LdL;-><init>(Ljava/lang/String;ILjava/lang/Class;IILnk;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LdL;
    .registers 2
    .parameter

    .prologue
    .line 18
    const-class v0, LdL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LdL;

    return-object v0
.end method

.method public static values()[LdL;
    .registers 1

    .prologue
    .line 18
    sget-object v0, LdL;->a:[LdL;

    invoke-virtual {v0}, [LdL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LdL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, LdL;->a:I

    return v0
.end method

.method public abstract a()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;"
        }
    .end annotation
.end method

.method public a()Lnk;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LdL;->a:Lnk;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, LdL;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, LdL;->c:I

    return v0
.end method
