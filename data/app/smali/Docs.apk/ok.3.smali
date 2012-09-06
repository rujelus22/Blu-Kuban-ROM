.class public final enum Lok;
.super Ljava/lang/Enum;
.source "DialogRegistryFactoryImpl.java"

# interfaces
.implements Loj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lok;",
        ">;",
        "Loj;"
    }
.end annotation


# static fields
.field public static final enum a:Lok;

.field private static final synthetic a:[Lok;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Lok;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lok;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lok;->a:Lok;

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Lok;

    sget-object v1, Lok;->a:Lok;

    aput-object v1, v0, v2

    sput-object v0, Lok;->a:[Lok;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lok;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lok;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lok;

    return-object v0
.end method

.method public static values()[Lok;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lok;->a:[Lok;

    invoke-virtual {v0}, [Lok;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lok;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)Loi;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lol;

    invoke-direct {v0, p1, p2}, Lol;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
