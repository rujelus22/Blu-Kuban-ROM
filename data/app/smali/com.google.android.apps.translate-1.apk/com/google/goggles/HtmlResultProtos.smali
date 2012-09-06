.class public final Lcom/google/goggles/HtmlResultProtos;
.super Ljava/lang/Object;
.source "HtmlResultProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HtmlResultProtos$1;,
        Lcom/google/goggles/HtmlResultProtos$HtmlResult;,
        Lcom/google/goggles/HtmlResultProtos$HtmlResultOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 497
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 2
    .parameter

    .prologue
    .line 10
    sget-object v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 11
    return-void
.end method
