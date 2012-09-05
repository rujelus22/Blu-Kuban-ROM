.class public interface abstract annotation Lfm;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lfm;
        a = {
            .enum Lfw;->ALL:Lfw;
        }
        b = .enum Lfm$a;->DEFAULT:Lfm$a;
        c = .enum Lfm$a;->DEFAULT:Lfm$a;
        d = .enum Lfm$a;->DEFAULT:Lfm$a;
        e = .enum Lfm$a;->DEFAULT:Lfm$a;
        f = .enum Lfm$a;->DEFAULT:Lfm$a;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm$1;,
        Lfm$a;
    }
.end annotation

.annotation runtime Lfj;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()[Lfw;
.end method

.method public abstract b()Lfm$a;
.end method

.method public abstract c()Lfm$a;
.end method

.method public abstract d()Lfm$a;
.end method

.method public abstract e()Lfm$a;
.end method

.method public abstract f()Lfm$a;
.end method
