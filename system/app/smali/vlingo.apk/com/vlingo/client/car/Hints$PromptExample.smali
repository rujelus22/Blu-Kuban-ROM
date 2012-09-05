.class public Lcom/vlingo/client/car/Hints$PromptExample;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/Hints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromptExample"
.end annotation


# instance fields
.field public final example:Ljava/lang/CharSequence;

.field public final icon:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;I)V
    .registers 3
    .parameter "example"
    .parameter "icon"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/vlingo/client/car/Hints$PromptExample;->example:Ljava/lang/CharSequence;

    .line 174
    iput p2, p0, Lcom/vlingo/client/car/Hints$PromptExample;->icon:I

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;ILcom/vlingo/client/car/Hints$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/Hints$PromptExample;-><init>(Ljava/lang/CharSequence;I)V

    return-void
.end method
