.class public final enum Lcom/google/googlenav/ui/wizard/iS;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/iS;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/iS;

.field private static final synthetic d:[Lcom/google/googlenav/ui/wizard/iS;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/google/googlenav/ui/wizard/iS;

    const-string v1, "WORK"

    const/16 v2, 0x7f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/iS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/iS;->a:Lcom/google/googlenav/ui/wizard/iS;

    .line 89
    new-instance v0, Lcom/google/googlenav/ui/wizard/iS;

    const-string v1, "HOME"

    const/16 v2, 0x7d

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/iS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/iS;

    sget-object v1, Lcom/google/googlenav/ui/wizard/iS;->a:Lcom/google/googlenav/ui/wizard/iS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/wizard/iS;->d:[Lcom/google/googlenav/ui/wizard/iS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/iS;->c:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/iS;
    .registers 2
    .parameter

    .prologue
    .line 87
    const-class v0, Lcom/google/googlenav/ui/wizard/iS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/iS;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/iS;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/googlenav/ui/wizard/iS;->d:[Lcom/google/googlenav/ui/wizard/iS;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/iS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/iS;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iS;->c:Ljava/lang/String;

    return-object v0
.end method
