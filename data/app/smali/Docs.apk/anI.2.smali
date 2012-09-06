.class public LanI;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field public static final a:LanG;

.field private static final a:Laqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqd",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/Object;

.field public static final b:LanG;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LanI;->a:Ljava/lang/Object;

    .line 42
    new-instance v0, LanJ;

    invoke-direct {v0}, LanJ;-><init>()V

    sput-object v0, LanI;->a:LanG;

    .line 114
    new-instance v0, LanL;

    invoke-direct {v0}, LanL;-><init>()V

    sput-object v0, LanI;->b:LanG;

    .line 123
    new-instance v0, LanM;

    invoke-direct {v0}, LanM;-><init>()V

    sput-object v0, LanI;->a:Laqd;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 32
    sget-object v0, LanI;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2
    .parameter

    .prologue
    .line 243
    instance-of v0, p0, Laol;

    return v0
.end method
