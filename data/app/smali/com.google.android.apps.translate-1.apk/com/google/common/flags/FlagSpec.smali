.class public interface abstract annotation Lcom/google/common/flags/FlagSpec;
.super Ljava/lang/Object;
.source "FlagSpec.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/common/flags/FlagSpec;
        altName = ""
        docLevel = .enum Lcom/google/common/flags/DocLevel;->PUBLIC:Lcom/google/common/flags/DocLevel;
        name = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract altName()Ljava/lang/String;
.end method

.method public abstract docLevel()Lcom/google/common/flags/DocLevel;
.end method

.method public abstract help()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method
