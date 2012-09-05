.class public final enum Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;
.super Ljava/lang/Enum;
.source "PromptEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/PromptEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PromptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_Banner:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_CheckBox:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_Header:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_Hidden:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public static final enum Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_Input"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 8
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_Password"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 10
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_Banner"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Banner:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_Combo"

    invoke-direct {v0, v1, v6}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 12
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_Header"

    invoke-direct {v0, v1, v7}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Header:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 14
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_Hidden"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Hidden:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 16
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v1, "Prompt_CheckBox"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_CheckBox:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Banner:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Header:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Hidden:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_CheckBox:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;
    .registers 2
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    return-object v0
.end method
