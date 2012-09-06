.class Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;
.super Ljava/lang/Object;
.source "FIFEUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

.field final synthetic val$sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;->val$sequence:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    #getter for: Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->strategy:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->access$000(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;->val$sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;->iterator(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
