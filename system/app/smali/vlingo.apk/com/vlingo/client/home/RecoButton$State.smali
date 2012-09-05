.class public final enum Lcom/vlingo/client/home/RecoButton$State;
.super Ljava/lang/Enum;
.source "RecoButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/home/RecoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/home/RecoButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/home/RecoButton$State;

.field public static final enum Clear:Lcom/vlingo/client/home/RecoButton$State;

.field public static final enum Listening:Lcom/vlingo/client/home/RecoButton$State;

.field public static final enum Speak:Lcom/vlingo/client/home/RecoButton$State;

.field public static final enum SpeakAgain:Lcom/vlingo/client/home/RecoButton$State;

.field public static final enum Thinking:Lcom/vlingo/client/home/RecoButton$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/vlingo/client/home/RecoButton$State;

    const-string v1, "Speak"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/home/RecoButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/home/RecoButton$State;->Speak:Lcom/vlingo/client/home/RecoButton$State;

    .line 35
    new-instance v0, Lcom/vlingo/client/home/RecoButton$State;

    const-string v1, "SpeakAgain"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/home/RecoButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/home/RecoButton$State;->SpeakAgain:Lcom/vlingo/client/home/RecoButton$State;

    .line 36
    new-instance v0, Lcom/vlingo/client/home/RecoButton$State;

    const-string v1, "Listening"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/home/RecoButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/home/RecoButton$State;->Listening:Lcom/vlingo/client/home/RecoButton$State;

    .line 37
    new-instance v0, Lcom/vlingo/client/home/RecoButton$State;

    const-string v1, "Thinking"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/home/RecoButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/home/RecoButton$State;->Thinking:Lcom/vlingo/client/home/RecoButton$State;

    .line 38
    new-instance v0, Lcom/vlingo/client/home/RecoButton$State;

    const-string v1, "Clear"

    invoke-direct {v0, v1, v6}, Lcom/vlingo/client/home/RecoButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/home/RecoButton$State;->Clear:Lcom/vlingo/client/home/RecoButton$State;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vlingo/client/home/RecoButton$State;

    sget-object v1, Lcom/vlingo/client/home/RecoButton$State;->Speak:Lcom/vlingo/client/home/RecoButton$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/home/RecoButton$State;->SpeakAgain:Lcom/vlingo/client/home/RecoButton$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/RecoButton$State;->Listening:Lcom/vlingo/client/home/RecoButton$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/RecoButton$State;->Thinking:Lcom/vlingo/client/home/RecoButton$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vlingo/client/home/RecoButton$State;->Clear:Lcom/vlingo/client/home/RecoButton$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vlingo/client/home/RecoButton$State;->$VALUES:[Lcom/vlingo/client/home/RecoButton$State;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/home/RecoButton$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/vlingo/client/home/RecoButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/RecoButton$State;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/home/RecoButton$State;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/vlingo/client/home/RecoButton$State;->$VALUES:[Lcom/vlingo/client/home/RecoButton$State;

    invoke-virtual {v0}, [Lcom/vlingo/client/home/RecoButton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/home/RecoButton$State;

    return-object v0
.end method
