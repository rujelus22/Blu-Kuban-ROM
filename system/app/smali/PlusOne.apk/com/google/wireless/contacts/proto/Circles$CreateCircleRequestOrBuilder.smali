.class public interface abstract Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequestOrBuilder;
.super Ljava/lang/Object;
.source "Circles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateCircleRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getForSharing()Z
.end method

.method public abstract getMembersToAdd(I)Ljava/lang/String;
.end method

.method public abstract getMembersToAddCount()I
.end method

.method public abstract getMembersToAddList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hasCircleType()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasEmail()Z
.end method

.method public abstract hasForSharing()Z
.end method

.method public abstract hasName()Z
.end method
