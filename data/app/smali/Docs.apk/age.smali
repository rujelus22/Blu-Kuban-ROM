.class public abstract Lage;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final a:Lage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lagf;

    invoke-direct {v0}, Lagf;-><init>()V

    sput-object v0, Lage;->a:Lage;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lage;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lage;->a:Lage;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
