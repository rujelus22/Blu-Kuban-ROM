.class public final enum Lcom/vlingo/client/tos/TermsOfServiceView$Text;
.super Ljava/lang/Enum;
.source "TermsOfServiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/tos/TermsOfServiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Text"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/tos/TermsOfServiceView$Text;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/tos/TermsOfServiceView$Text;

.field public static final enum TextSamsung:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

.field public static final enum TextTerms:Lcom/vlingo/client/tos/TermsOfServiceView$Text;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    const-string v1, "TextTerms"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/tos/TermsOfServiceView$Text;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->TextTerms:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    .line 23
    new-instance v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    const-string v1, "TextSamsung"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/tos/TermsOfServiceView$Text;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->TextSamsung:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    sget-object v1, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->TextTerms:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->TextSamsung:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->$VALUES:[Lcom/vlingo/client/tos/TermsOfServiceView$Text;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/tos/TermsOfServiceView$Text;
    .registers 2
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/tos/TermsOfServiceView$Text;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->$VALUES:[Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    invoke-virtual {v0}, [Lcom/vlingo/client/tos/TermsOfServiceView$Text;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    return-object v0
.end method
