package uz.remnant.sweater.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.remnant.sweater.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
