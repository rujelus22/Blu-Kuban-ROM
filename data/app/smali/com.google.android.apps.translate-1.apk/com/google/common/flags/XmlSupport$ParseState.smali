.class final enum Lcom/google/common/flags/XmlSupport$ParseState;
.super Ljava/lang/Enum;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/flags/XmlSupport$ParseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flags/XmlSupport$ParseState;

.field public static final enum FLAG:Lcom/google/common/flags/XmlSupport$ParseState;

.field public static final enum FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

.field public static final enum FLAG_CHILD:Lcom/google/common/flags/XmlSupport$ParseState;

.field public static final enum FLAG_CONTAINER:Lcom/google/common/flags/XmlSupport$ParseState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/google/common/flags/XmlSupport$ParseState;

    const-string v1, "FLAGS"

    invoke-direct {v0, v1, v2}, Lcom/google/common/flags/XmlSupport$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

    new-instance v0, Lcom/google/common/flags/XmlSupport$ParseState;

    const-string v1, "FLAG"

    invoke-direct {v0, v1, v3}, Lcom/google/common/flags/XmlSupport$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG:Lcom/google/common/flags/XmlSupport$ParseState;

    new-instance v0, Lcom/google/common/flags/XmlSupport$ParseState;

    const-string v1, "FLAG_CHILD"

    invoke-direct {v0, v1, v4}, Lcom/google/common/flags/XmlSupport$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG_CHILD:Lcom/google/common/flags/XmlSupport$ParseState;

    new-instance v0, Lcom/google/common/flags/XmlSupport$ParseState;

    const-string v1, "FLAG_CONTAINER"

    invoke-direct {v0, v1, v5}, Lcom/google/common/flags/XmlSupport$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG_CONTAINER:Lcom/google/common/flags/XmlSupport$ParseState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/flags/XmlSupport$ParseState;

    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG:Lcom/google/common/flags/XmlSupport$ParseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG_CHILD:Lcom/google/common/flags/XmlSupport$ParseState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG_CONTAINER:Lcom/google/common/flags/XmlSupport$ParseState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->$VALUES:[Lcom/google/common/flags/XmlSupport$ParseState;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flags/XmlSupport$ParseState;
    .registers 2
    .parameter "name"

    .prologue
    .line 92
    const-class v0, Lcom/google/common/flags/XmlSupport$ParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/XmlSupport$ParseState;

    return-object v0
.end method

.method public static values()[Lcom/google/common/flags/XmlSupport$ParseState;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->$VALUES:[Lcom/google/common/flags/XmlSupport$ParseState;

    invoke-virtual {v0}, [Lcom/google/common/flags/XmlSupport$ParseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flags/XmlSupport$ParseState;

    return-object v0
.end method
