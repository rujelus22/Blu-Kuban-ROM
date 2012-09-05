.class public final Ljv$a;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# static fields
.field public static final a:Ljv$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljv$a;

    invoke-direct {v0}, Ljv$a;-><init>()V

    sput-object v0, Ljv$a;->a:Ljv$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)Z
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Lme;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method
