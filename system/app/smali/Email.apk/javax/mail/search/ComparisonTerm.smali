.class public abstract Ljavax/mail/search/ComparisonTerm;
.super Ljavax/mail/search/SearchTerm;
.source "ComparisonTerm.java"


# instance fields
.field protected comparison:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 77
    instance-of v0, p1, Ljavax/mail/search/ComparisonTerm;

    if-eqz v0, :cond_e

    check-cast p1, Ljavax/mail/search/ComparisonTerm;

    iget v0, p1, Ljavax/mail/search/ComparisonTerm;->comparison:I

    iget v1, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    return v0
.end method
